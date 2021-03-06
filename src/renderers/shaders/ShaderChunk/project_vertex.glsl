mat4 viewMatrixEye = isMultiview ? (VIEW_ID == LEFT_EYE_VIEW_ID ? leftViewMatrix : rightViewMatrix) : viewMatrix;
mat4 projectionMatrixEye = isMultiview ? (VIEW_ID == LEFT_EYE_VIEW_ID ? leftProjectionMatrix : rightProjectionMatrix) : projectionMatrix;

//mat4 viewMatrixEye = (VIEW_ID == 0u ? leftViewMatrix : rightViewMatrix;
//mat4 projectionMatrixEye = VIEW_ID == 0u ? leftProjectionMatrix : rightProjectionMatrix;

//viewMatrixEye = leftViewMatrix;
//projectionMatrixEye = leftProjectionMatrix;

// viewMatrixEye = rightViewMatrix;
// projectionMatrixEye = rightProjectionMatrix;

vec4 mvPosition = viewMatrixEye * modelMatrix * vec4( transformed, 1.0 );

gl_Position = projectionMatrixEye * mvPosition;
