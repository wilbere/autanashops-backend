<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted' => 'El :attribute debe ser aceptado.',
    'active_url' => 'El :attribute no es una URL válida.',
    'after' => 'El :attribute debe ser una fecha posterior a :date.',
    'after_or_equal' => 'El :attribute debe ser una fecha posterior o igual a :date.',
    'alpha' => 'El :attribute solo puede contener letras.',
    'alpha_dash' => 'El :attribute solo puede contener letras, números, guiones y guiones bajos.',
    'alpha_num' => 'El :attribute solo puede contener letras y números.',
    'array' => 'El :attribute debe ser un arreglo.',
    'before' => 'El :attribute debe ser una fecha anterior a :date.',
    'before_or_equal' => 'El :attribute debe ser una fecha anterior o igual a :date.',
    'between' => [
        'numeric' => 'EL :attribute debe ser entre :min y :max.',
        'file' => 'El :attribute debe ser entre :min y :max kilobytes.',
        'string' => 'El :attribute debe ser entre :min y :max caracteres.',
        'array' => 'El :attribute debe tener entre :min y :max items.',
    ],
    'boolean' => 'El campo :attribute debe ser verdadero o falso.',
    'confirmed' => 'La confirmación de :attribute no coincide.',
    'date' => 'El :attribute no es una fecha valida.',
    'date_equals' => 'El :attribute debe ser igual a :date.',
    'date_format' => 'El :attribute no coincide con el formato :format.',
    'different' => 'El :attribute y :other deben ser diferentes.',
    'digits' => 'El :attribute debe ser de :digits digitos.',
    'digits_between' => 'El :attribute debe ser entre :min y :max digitos.',
    'dimensions' => 'El :attribute tiene dimensiones de imagen no válidas.',
    'distinct' => 'El campo :attribute tiene un valor duplicado.',
    'email' => 'El :attribute debe ser una dirección de correo válida.',
    'ends_with' => 'El :attribute debe terminar con uno de los siguientes: :values.',
    'exists' => 'El :attribute seleccionado es invalido.',
    'file' => 'El :attribute debe ser un archivo.',
    'filled' => 'El :attribute debe tener un valor.',
    'gt' => [
        'numeric' => 'El :attribute debe ser mayor a :value.',
        'file' => 'El :attribute debe ser mayor a :value kilobytes.',
        'string' => 'El :attribute debe ser mayor a :value caracteres.',
        'array' => 'El :attribute debe tener más de :value items.',
    ],
    'gte' => [
        'numeric' => 'El :attribute debe ser mayor que or equal :value.',
        'file' => 'El :attribute debe ser mayor que or equal :value kilobytes.',
        'string' => 'El :attribute debe ser mayor que or equal :value characters.',
        'array' => 'El :attribute must have :value items or more.',
    ],
    'image' => 'El :attribute must be an image.',
    'in' => 'El selected :attribute is invalid.',
    'in_array' => 'El :attribute field does not exist in :other.',
    'integer' => 'El :attribute must be an integer.',
    'ip' => 'El :attribute must be a valid IP address.',
    'ipv4' => 'El :attribute must be a valid IPv4 address.',
    'ipv6' => 'El :attribute must be a valid IPv6 address.',
    'json' => 'El :attribute must be a valid JSON string.',
    'lt' => [
        'numeric' => 'El :attribute must be less than :value.',
        'file' => 'El :attribute must be less than :value kilobytes.',
        'string' => 'El :attribute must be less than :value characters.',
        'array' => 'El :attribute must have less than :value items.',
    ],
    'lte' => [
        'numeric' => 'El :attribute must be less than or equal :value.',
        'file' => 'El :attribute must be less than or equal :value kilobytes.',
        'string' => 'El :attribute must be less than or equal :value characters.',
        'array' => 'El :attribute must not have more than :value items.',
    ],
    'max' => [
        'numeric' => 'El :attribute may not be greater than :max.',
        'file' => 'El :attribute may not be greater than :max kilobytes.',
        'string' => 'El :attribute may not be greater than :max characters.',
        'array' => 'El :attribute may not have more than :max items.',
    ],
    'mimes' => 'El :attribute must be a file of type: :values.',
    'mimetypes' => 'El :attribute must be a file of type: :values.',
    'min' => [
        'numeric' => 'El :attribute must be at least :min.',
        'file' => 'El :attribute must be at least :min kilobytes.',
        'string' => 'El :attribute must be at least :min characters.',
        'array' => 'El :attribute must have at least :min items.',
    ],
    'not_in' => 'El selected :attribute is invalid.',
    'not_regex' => 'El :attribute format is invalid.',
    'numeric' => 'El campo :attribute debe ser solo números.',
    'password' => 'La contraseña es incorrecta.',
    'present' => 'El :attribute field must be present.',
    'regex' => 'El :attribute format is invalid.',
    'required' => 'El campo :attribute es requerido.',
    'required_if' => 'El :attribute field is required when :other is :value.',
    'required_unless' => 'El :attribute field is required unless :other is in :values.',
    'required_with' => 'El :attribute field is required when :values is present.',
    'required_with_all' => 'El :attribute field is required when :values are present.',
    'required_without' => 'El :attribute field is required when :values is not present.',
    'required_without_all' => 'El :attribute field is required when none of :values are present.',
    'same' => 'El campo :attribute y :other deben coincidir.',
    'size' => [
        'numeric' => 'El :attribute must be :size.',
        'file' => 'El :attribute must be :size kilobytes.',
        'string' => 'El :attribute must be :size characters.',
        'array' => 'El :attribute must contain :size items.',
    ],
    'starts_with' => 'El :attribute must start with one of the following: :values.',
    'string' => 'El :attribute must be a string.',
    'timezone' => 'El :attribute must be a valid zone.',
    'unique' => 'El :attribute ya existe.',
    'uploaded' => 'El :attribute failed to upload.',
    'url' => 'El :attribute format is invalid.',
    'uuid' => 'El :attribute must be a valid UUID.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap our attribute placeholder
    | with something more reader friendly such as "E-Mail Address" instead
    | of "email". This simply helps us make our message more expressive.
    |
    */

    'attributes' => [],

];
