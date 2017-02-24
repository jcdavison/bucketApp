@fotoRow = React.createClass

  componentDidMount: () ->

  getInitialState: () ->
    photoIndex: (3 * @props.data.rowIndex)

  render: () ->
    React.DOM.div
      className: 'row'
      React.DOM.div
        className: 'col-md-4 centered'
        React.DOM.img
          className: 'photo-element'
          src: @props.data.fotos.photos[@state.photoIndex].url
        React.DOM.div
          className: null
          @props.data.fotos.photos[@state.photoIndex].caption || "some caption"
        React.DOM.div
          className: null
          "by #{@props.data.fotos.photos[@state.photoIndex].userName}"

      React.DOM.div
        className: 'col-md-4 centered'
        React.DOM.img
          className: 'photo-element'
          src: @props.data.fotos.photos[@state.photoIndex + 1].url
        React.DOM.div
          className: null
          @props.data.fotos.photos[@state.photoIndex + 1].caption || "some caption"
        React.DOM.div
          className: null
          "by #{@props.data.fotos.photos[@state.photoIndex + 1].userName}"

      React.DOM.div
        className: 'col-md-4 centered'
        React.DOM.img
          className: 'photo-element'
          src: @props.data.fotos.photos[@state.photoIndex + 2].url
        React.DOM.div
          className: null
          @props.data.fotos.photos[@state.photoIndex + 2].caption || "some caption"
        React.DOM.div
          className: null
          "by #{@props.data.fotos.photos[@state.photoIndex + 2].userName}"
