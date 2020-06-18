// 定义state
class ReduxState {
  String name;
  ReduxState.initState() : name = "Are";
}

//定义action
enum ReduxAction {
  Change
}

//定义reducer
ReduxState getReduce(ReduxState state, action) {
  if(action == ReduxAction.Change) {
    String name = "you";
    state.name = state.name + name;
  }
  return state;
}