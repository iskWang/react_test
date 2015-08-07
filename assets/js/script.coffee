# Ref. https://facebook.github.io/react/docs/forms.html
#      http://neugierig.org/software/blog/2014/02/react-jsx-coffeescript.html

R = React.DOM

inputBox = React.createClass(
  getInitialState: ->
    return value: 'hello'

  handleChange: (event)->
    this.setState value: event.target.value

  render: ->
    value = this.state.value
    R.div null,
      R.input type: 'text', value: value, onChange:this.handleChange
      R.br null
      if value.length > 0
        R.button className:'btn btn-xs btn-default', value[i] for i in [ 0..value.length-1 ]

)

React.render(
  React.createElement(inputBox, null),
  document.getElementById('content')
)