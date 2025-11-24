import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/container_node.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';

class TestFlexPage extends StatelessWidget {
  const TestFlexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            onTap: () => context.openForm(NoExpansionForm(context)),
            leading: const Icon(Icons.menu),
            title: const Text('No expansion'),
            trailing: const Icon(Icons.chevron_right),
          ),
          const FormHeader(WoFormHeaderData(labelText: 'Vertical')),
          ListTile(
            onTap: () => context.openForm(FlexStandardVerticalForm(context)),
            leading: const Icon(Icons.expand),
            title: const Text('Standard'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () => context.openForm(FlexMultistepVerticalForm(context)),
            leading: const Icon(Icons.expand),
            title: const Text('Multistep'),
            trailing: const Icon(Icons.chevron_right),
          ),
          const FormHeader(WoFormHeaderData(labelText: 'Horizontal')),
          ListTile(
            onTap: () => context.openForm(FlexStandardHorizontalForm(context)),
            leading: const Icon(Icons.expand),
            title: const Text('Standard'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () => context.openForm(FlexMultistepHorizontalForm(context)),
            leading: const Icon(Icons.expand),
            title: const Text('Multistep'),
            trailing: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}

class NoExpansionForm extends WoForm {
  NoExpansionForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            presentation: context.read<PresentationCubit>().state,
          ),
          children: [
            ContainerNode(
              height: 140,
              text: 'height: 140',
            ),
            ContainerNode(
              color: Colors.purple,
              height: 140,
              text: 'height: 140',
            ),
            ContainerNode(
              height: 140,
              text: 'height: 140',
            ),
            ContainerNode(
              color: Colors.purple,
              height: 140,
              text: 'height: 140',
            ),
            ContainerNode(
              height: 140,
              text: 'height: 140',
            ),
            ContainerNode(
              color: Colors.purple,
              height: 140,
              text: 'height: 140',
            ),
          ],
        );
}

class FlexStandardVerticalForm extends WoForm {
  FlexStandardVerticalForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            layout: LayoutMethod.flexible,
            presentation: context.read<PresentationCubit>().state,
          ),
          children: [
            ContainerNode(
              text: 'flex : unset',
            ),
            ContainerNode(
              flex: 1,
              color: Colors.orangeAccent,
              text: 'flex : 1',
            ),
            ContainerNode(
              flex: 2,
              color: Colors.green,
              text: 'flex : 2',
            ),
          ],
        );
}

class FlexMultistepVerticalForm extends WoForm {
  FlexMultistepVerticalForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            layout: LayoutMethod.flexible,
            multistepSettings: const MultistepSettings(),
            presentation: context.read<PresentationCubit>().state,
          ),
          children: [
            InputsNode(
              id: 'list',
              uiSettings: const InputsNodeUiSettings(flex: 1),
              children: [
                ContainerNode(
                  text: 'flex : unset',
                ),
                ContainerNode(
                  flex: 1,
                  color: Colors.orangeAccent,
                  text: 'flex : 1',
                ),
                ContainerNode(
                  flex: 2,
                  color: Colors.green,
                  text: 'flex : 2',
                ),
              ],
            ),
          ],
        );
}

class FlexStandardHorizontalForm extends WoForm {
  FlexStandardHorizontalForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            layout: LayoutMethod.flexible,
            presentation: context.read<PresentationCubit>().state,
          ),
          children: [
            InputsNode(
              id: 'list1',
              uiSettings: const InputsNodeUiSettings(
                direction: Axis.horizontal,
                flex: 1,
              ),
              children: [
                ContainerNode(
                  text: 'flex : unset',
                ),
                ContainerNode(
                  flex: 2,
                  color: Colors.green,
                  text: 'flex : 2',
                ),
              ],
            ),
            WidgetNode(
                builder: (context) => const SizedBox.square(dimension: 16)),
            InputsNode(
              id: 'list2',
              uiSettings: const InputsNodeUiSettings(
                direction: Axis.horizontal,
                flex: 2,
              ),
              children: [
                ContainerNode(
                  text: 'flex : unset',
                ),
                ContainerNode(
                  flex: 1,
                  color: Colors.orangeAccent,
                  text: 'flex : 1',
                ),
                ContainerNode(
                  flex: 2,
                  color: Colors.green,
                  text: 'flex : 2',
                ),
              ],
            ),
          ],
        );
}

class FlexMultistepHorizontalForm extends WoForm {
  FlexMultistepHorizontalForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            layout: LayoutMethod.flexible,
            multistepSettings: const MultistepSettings(),
            presentation: context.read<PresentationCubit>().state,
          ),
          children: [
            InputsNode(
              id: 'list1',
              uiSettings: const InputsNodeUiSettings(
                flex: 1,
                labelText: 'Step 1',
              ),
              children: [
                InputsNode(
                  id: 'list1',
                  uiSettings: const InputsNodeUiSettings(
                    direction: Axis.horizontal,
                    flex: 1,
                  ),
                  children: [
                    ContainerNode(
                      text: 'flex : unset',
                    ),
                    ContainerNode(
                      flex: 2,
                      color: Colors.green,
                      text: 'flex : 2',
                    ),
                  ],
                ),
                WidgetNode(
                    builder: (context) => const SizedBox.square(dimension: 16)),
                InputsNode(
                  id: 'list2',
                  uiSettings: const InputsNodeUiSettings(
                    direction: Axis.horizontal,
                    flex: 2,
                  ),
                  children: [
                    ContainerNode(
                      text: 'flex : unset',
                    ),
                    ContainerNode(
                      flex: 1,
                      color: Colors.orangeAccent,
                      text: 'flex : 1',
                    ),
                    ContainerNode(
                      flex: 2,
                      color: Colors.green,
                      text: 'flex : 2',
                    ),
                  ],
                ),
              ],
            ),
            InputsNode(
              id: 'list2',
              uiSettings: const InputsNodeUiSettings(
                flex: 1,
                labelText: 'Step 2',
              ),
              children: [
                InputsNode(
                  id: 'list1',
                  uiSettings: const InputsNodeUiSettings(
                    direction: Axis.horizontal,
                    flex: 1,
                  ),
                  children: [
                    ContainerNode(
                      text: 'flex : unset',
                    ),
                    ContainerNode(
                      flex: 2,
                      color: Colors.green,
                      text: 'flex : 2',
                    ),
                  ],
                ),
                WidgetNode(
                    builder: (context) => const SizedBox.square(dimension: 16)),
                InputsNode(
                  id: 'list2',
                  uiSettings: const InputsNodeUiSettings(
                    direction: Axis.horizontal,
                    flex: 2,
                  ),
                  children: [
                    ContainerNode(
                      text: 'flex : unset',
                    ),
                    ContainerNode(
                      flex: 1,
                      color: Colors.orangeAccent,
                      text: 'flex : 1',
                    ),
                    ContainerNode(
                      flex: 2,
                      color: Colors.green,
                      text: 'flex : 2',
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
}
