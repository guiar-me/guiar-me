// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EventsController on EventsControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'EventsControllerBase.currentPage', context: context);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$lastPageAtom =
      Atom(name: 'EventsControllerBase.lastPage', context: context);

  @override
  int get lastPage {
    _$lastPageAtom.reportRead();
    return super.lastPage;
  }

  @override
  set lastPage(int value) {
    _$lastPageAtom.reportWrite(value, super.lastPage, () {
      super.lastPage = value;
    });
  }

  late final _$eventAtom =
      Atom(name: 'EventsControllerBase.event', context: context);

  @override
  EventModel get event {
    _$eventAtom.reportRead();
    return super.event;
  }

  bool _eventIsInitialized = false;

  @override
  set event(EventModel value) {
    _$eventAtom.reportWrite(value, _eventIsInitialized ? super.event : null,
        () {
      super.event = value;
      _eventIsInitialized = true;
    });
  }

  late final _$listEventAtom =
      Atom(name: 'EventsControllerBase.listEvent', context: context);

  @override
  List<EventModel> get listEvent {
    _$listEventAtom.reportRead();
    return super.listEvent;
  }

  @override
  set listEvent(List<EventModel> value) {
    _$listEventAtom.reportWrite(value, super.listEvent, () {
      super.listEvent = value;
    });
  }

  late final _$removeEventUrlParamAtom =
      Atom(name: 'EventsControllerBase.removeEventUrlParam', context: context);

  @override
  RemoveEventUrlParam get removeEventUrlParam {
    _$removeEventUrlParamAtom.reportRead();
    return super.removeEventUrlParam;
  }

  bool _removeEventUrlParamIsInitialized = false;

  @override
  set removeEventUrlParam(RemoveEventUrlParam value) {
    _$removeEventUrlParamAtom.reportWrite(value,
        _removeEventUrlParamIsInitialized ? super.removeEventUrlParam : null,
        () {
      super.removeEventUrlParam = value;
      _removeEventUrlParamIsInitialized = true;
    });
  }

  late final _$findEventUrlParamAtom =
      Atom(name: 'EventsControllerBase.findEventUrlParam', context: context);

  @override
  FindEventUrlParam get findEventUrlParam {
    _$findEventUrlParamAtom.reportRead();
    return super.findEventUrlParam;
  }

  bool _findEventUrlParamIsInitialized = false;

  @override
  set findEventUrlParam(FindEventUrlParam value) {
    _$findEventUrlParamAtom.reportWrite(
        value, _findEventUrlParamIsInitialized ? super.findEventUrlParam : null,
        () {
      super.findEventUrlParam = value;
      _findEventUrlParamIsInitialized = true;
    });
  }

  late final _$listEventsQueryParamAtom =
      Atom(name: 'EventsControllerBase.listEventsQueryParam', context: context);

  @override
  ListEventsQueryParam get listEventsQueryParam {
    _$listEventsQueryParamAtom.reportRead();
    return super.listEventsQueryParam;
  }

  bool _listEventsQueryParamIsInitialized = false;

  @override
  set listEventsQueryParam(ListEventsQueryParam value) {
    _$listEventsQueryParamAtom.reportWrite(value,
        _listEventsQueryParamIsInitialized ? super.listEventsQueryParam : null,
        () {
      super.listEventsQueryParam = value;
      _listEventsQueryParamIsInitialized = true;
    });
  }

  late final _$addEventBodyParamAtom =
      Atom(name: 'EventsControllerBase.addEventBodyParam', context: context);

  @override
  AddEventBodyParam get addEventBodyParam {
    _$addEventBodyParamAtom.reportRead();
    return super.addEventBodyParam;
  }

  bool _addEventBodyParamIsInitialized = false;

  @override
  set addEventBodyParam(AddEventBodyParam value) {
    _$addEventBodyParamAtom.reportWrite(
        value, _addEventBodyParamIsInitialized ? super.addEventBodyParam : null,
        () {
      super.addEventBodyParam = value;
      _addEventBodyParamIsInitialized = true;
    });
  }

  late final _$editEventBodyParamAtom =
      Atom(name: 'EventsControllerBase.editEventBodyParam', context: context);

  @override
  EditEventBodyParam get editEventBodyParam {
    _$editEventBodyParamAtom.reportRead();
    return super.editEventBodyParam;
  }

  bool _editEventBodyParamIsInitialized = false;

  @override
  set editEventBodyParam(EditEventBodyParam value) {
    _$editEventBodyParamAtom.reportWrite(value,
        _editEventBodyParamIsInitialized ? super.editEventBodyParam : null, () {
      super.editEventBodyParam = value;
      _editEventBodyParamIsInitialized = true;
    });
  }

  late final _$editEventUrlParamAtom =
      Atom(name: 'EventsControllerBase.editEventUrlParam', context: context);

  @override
  EditEventUrlParam get editEventUrlParam {
    _$editEventUrlParamAtom.reportRead();
    return super.editEventUrlParam;
  }

  bool _editEventUrlParamIsInitialized = false;

  @override
  set editEventUrlParam(EditEventUrlParam value) {
    _$editEventUrlParamAtom.reportWrite(
        value, _editEventUrlParamIsInitialized ? super.editEventUrlParam : null,
        () {
      super.editEventUrlParam = value;
      _editEventUrlParamIsInitialized = true;
    });
  }

  late final _$isLoadingNextPageAtom =
      Atom(name: 'EventsControllerBase.isLoadingNextPage', context: context);

  @override
  bool get isLoadingNextPage {
    _$isLoadingNextPageAtom.reportRead();
    return super.isLoadingNextPage;
  }

  @override
  set isLoadingNextPage(bool value) {
    _$isLoadingNextPageAtom.reportWrite(value, super.isLoadingNextPage, () {
      super.isLoadingNextPage = value;
    });
  }

  late final _$isLoadingRemoveEventAtom =
      Atom(name: 'EventsControllerBase.isLoadingRemoveEvent', context: context);

  @override
  bool get isLoadingRemoveEvent {
    _$isLoadingRemoveEventAtom.reportRead();
    return super.isLoadingRemoveEvent;
  }

  @override
  set isLoadingRemoveEvent(bool value) {
    _$isLoadingRemoveEventAtom.reportWrite(value, super.isLoadingRemoveEvent,
        () {
      super.isLoadingRemoveEvent = value;
    });
  }

  late final _$isLoadingFindEventAtom =
      Atom(name: 'EventsControllerBase.isLoadingFindEvent', context: context);

  @override
  bool get isLoadingFindEvent {
    _$isLoadingFindEventAtom.reportRead();
    return super.isLoadingFindEvent;
  }

  @override
  set isLoadingFindEvent(bool value) {
    _$isLoadingFindEventAtom.reportWrite(value, super.isLoadingFindEvent, () {
      super.isLoadingFindEvent = value;
    });
  }

  late final _$isLoadingListEventsAtom =
      Atom(name: 'EventsControllerBase.isLoadingListEvents', context: context);

  @override
  bool get isLoadingListEvents {
    _$isLoadingListEventsAtom.reportRead();
    return super.isLoadingListEvents;
  }

  @override
  set isLoadingListEvents(bool value) {
    _$isLoadingListEventsAtom.reportWrite(value, super.isLoadingListEvents, () {
      super.isLoadingListEvents = value;
    });
  }

  late final _$isLoadingAddEventAtom =
      Atom(name: 'EventsControllerBase.isLoadingAddEvent', context: context);

  @override
  bool get isLoadingAddEvent {
    _$isLoadingAddEventAtom.reportRead();
    return super.isLoadingAddEvent;
  }

  @override
  set isLoadingAddEvent(bool value) {
    _$isLoadingAddEventAtom.reportWrite(value, super.isLoadingAddEvent, () {
      super.isLoadingAddEvent = value;
    });
  }

  late final _$isLoadingEditEventAtom =
      Atom(name: 'EventsControllerBase.isLoadingEditEvent', context: context);

  @override
  bool get isLoadingEditEvent {
    _$isLoadingEditEventAtom.reportRead();
    return super.isLoadingEditEvent;
  }

  @override
  set isLoadingEditEvent(bool value) {
    _$isLoadingEditEventAtom.reportWrite(value, super.isLoadingEditEvent, () {
      super.isLoadingEditEvent = value;
    });
  }

  late final _$removeEventAsyncAction =
      AsyncAction('EventsControllerBase.removeEvent', context: context);

  @override
  Future<bool> removeEvent() {
    return _$removeEventAsyncAction.run(() => super.removeEvent());
  }

  late final _$findEventAsyncAction =
      AsyncAction('EventsControllerBase.findEvent', context: context);

  @override
  Future<bool> findEvent() {
    return _$findEventAsyncAction.run(() => super.findEvent());
  }

  late final _$listEventsAsyncAction =
      AsyncAction('EventsControllerBase.listEvents', context: context);

  @override
  Future<bool> listEvents() {
    return _$listEventsAsyncAction.run(() => super.listEvents());
  }

  late final _$addEventAsyncAction =
      AsyncAction('EventsControllerBase.addEvent', context: context);

  @override
  Future<bool> addEvent() {
    return _$addEventAsyncAction.run(() => super.addEvent());
  }

  late final _$editEventAsyncAction =
      AsyncAction('EventsControllerBase.editEvent', context: context);

  @override
  Future<bool> editEvent() {
    return _$editEventAsyncAction.run(() => super.editEvent());
  }

  late final _$EventsControllerBaseActionController =
      ActionController(name: 'EventsControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEvent(EventModel data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setEvent');
    try {
      return super.setEvent(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListEvent(List<EventModel> data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setListEvent');
    try {
      return super.setListEvent(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRemoveEventUrlParam(RemoveEventUrlParam data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setRemoveEventUrlParam');
    try {
      return super.setRemoveEventUrlParam(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindEventUrlParam(FindEventUrlParam data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setFindEventUrlParam');
    try {
      return super.setFindEventUrlParam(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListEventsQueryParam(ListEventsQueryParam data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setListEventsQueryParam');
    try {
      return super.setListEventsQueryParam(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddEventBodyParam(AddEventBodyParam data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setAddEventBodyParam');
    try {
      return super.setAddEventBodyParam(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditEventBodyParam(EditEventBodyParam data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setEditEventBodyParam');
    try {
      return super.setEditEventBodyParam(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditEventUrlParam(EditEventUrlParam data) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setEditEventUrlParam');
    try {
      return super.setEditEventUrlParam(data);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingRemoveEvent(bool isLoading) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setIsLoadingRemoveEvent');
    try {
      return super.setIsLoadingRemoveEvent(isLoading);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingFindEvent(bool isLoading) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setIsLoadingFindEvent');
    try {
      return super.setIsLoadingFindEvent(isLoading);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListEvents(bool isLoading) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setIsLoadingListEvents');
    try {
      return super.setIsLoadingListEvents(isLoading);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddEvent(bool isLoading) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setIsLoadingAddEvent');
    try {
      return super.setIsLoadingAddEvent(isLoading);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEditEvent(bool isLoading) {
    final _$actionInfo = _$EventsControllerBaseActionController.startAction(
        name: 'EventsControllerBase.setIsLoadingEditEvent');
    try {
      return super.setIsLoadingEditEvent(isLoading);
    } finally {
      _$EventsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
event: ${event},
listEvent: ${listEvent},
removeEventUrlParam: ${removeEventUrlParam},
findEventUrlParam: ${findEventUrlParam},
listEventsQueryParam: ${listEventsQueryParam},
addEventBodyParam: ${addEventBodyParam},
editEventBodyParam: ${editEventBodyParam},
editEventUrlParam: ${editEventUrlParam},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingRemoveEvent: ${isLoadingRemoveEvent},
isLoadingFindEvent: ${isLoadingFindEvent},
isLoadingListEvents: ${isLoadingListEvents},
isLoadingAddEvent: ${isLoadingAddEvent},
isLoadingEditEvent: ${isLoadingEditEvent}
    ''';
  }
}
