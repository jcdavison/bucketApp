@photoFeed = React.createClass

  getDefaultProps: () ->

  componentDidMount: () ->
    @getFotos()

  getInitialState: ->
    caption: null
    fotos: null

  getFotos: () ->
    $.get('/api/v1/photos', {})
      .done( (res) =>
        @setState fotos: res
      )

  showUploadModal: () ->
    $('#picUpload').modal()

  render: () ->
    React.DOM.div
      id: 'feed'
      className: 'col-md-12 charcoal-bg'
      React.DOM.div
        className: null
        React.DOM.h1
          className: 'centered'
          "Hi #{@props.data.currentUser.name}"
        React.DOM.h3
          className: 'centered'
          "Welcome to your PhotoBucket"
      React.DOM.div
        className: null
        if @state.fotos
          React.DOM.div
            className: null
            React.createElement fotoRow, data: fotos: @state.fotos, rowIndex: 0, currentUser: @props.data.currentUser
            React.createElement fotoRow, data: fotos: @state.fotos, rowIndex: 1, currentUser: @props.data.currentUser
            React.createElement fotoRow, data: fotos: @state.fotos, rowIndex: 2, currentUser: @props.data.currentUser
      React.DOM.div
        id: 'addPic'
        onClick: @showUploadModal
        "+"

      React.DOM.div
        className: 'modal fade request-code-review'
        id: 'picUpload'
        React.DOM.div
          className: 'modal-dialog modal-sm'
          React.DOM.div
            className: 'modal-content no-corners'
            React.DOM.div
              className: 'modal-header blue medium'
              React.DOM.button
                className: 'close'
                'data-dismiss': 'modal'
                React.DOM.span
                  className: 'null'
                  'aria-hidden': true
                  'X'
            React.DOM.div
              className: 'modal-body request-code-review-form'
              React.DOM.div
                className: 'row'
                React.DOM.div
                  className: 'col-md-12'
                  React.DOM.h2
                    className: 'centered'
                    "Add Photo"
                  React.DOM.form
                    id: "newPicForm" 
                    React.DOM.input
                      className: 'full-bleed centered'
                      type: 'text'
                      name: 'caption'
