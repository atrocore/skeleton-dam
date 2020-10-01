<?php

// create app
$app = new \Treo\Core\Application();

// set demo data to DB
$app
    ->getContainer()
    ->get('entityManager')
    ->nativeQuery(file_get_contents('data/demo-data.sql'));
unlink('data/demo-data.sql');

// set demo data to config
$config = $app->getContainer()->get('config');
$config->set('isMultilangActive', true);
$config->set('inputLanguageList', ['de_DE', 'en_US']);
$config->set('globalSearchEntityList', []);
$config->set(
    'tabList', [
        'Association',
        'Attribute',
        'AttributeGroup',
        'Brand',
        'Catalog',
        'Category',
        'Channel',
        'Product',
        'ProductFamily',
        'Asset',
        'AssetCategory',
        'Collection',
        '_delimiter_',
        'Account',
        'Contact'
    ]
);
$config->set(
    'quickCreateList', [
        'Association',
        'Attribute',
        'AttributeGroup',
        'Brand',
        'Category',
        'Channel',
        'Product',
        'ProductFamily',
        'Catalog',
        'Asset',
        'AssetCategory',
        'Collection'
    ]
);
$unitsOfMeasure = [
    'Length'                    => [
        'unitList'  => [
            'mm',
            'cm',
            'dm',
            'm',
            'km',
            'inch'
        ],
        'baseUnit'  => 'mm',
        'unitRates' => [
            'cm'   => 1,
            'dm'   => 1,
            'm'    => 1,
            'km'   => 1,
            'inch' => 1
        ]
    ],
    'Mass'                      => [
        'unitList'  => [
            'mg',
            'g',
            'kg',
            'ounces'
        ],
        'baseUnit'  => 'mg',
        'unitRates' => [
            'g'      => 1,
            'kg'     => 1,
            'ounces' => 1
        ]
    ],
    'Time'                      => [
        'unitList'  => [
            's',
            'm',
            'h'
        ],
        'baseUnit'  => 's',
        'unitRates' => [
            'm' => 1,
            'h' => 1
        ]
    ],
    'Electric Current'          => [
        'unitList'  => [
            'A'
        ],
        'baseUnit'  => 'A',
        'unitRates' => []
    ],
    'Thermodynamic Temperature' => [
        'unitList'  => [
            'K',
            'C'
        ],
        'baseUnit'  => 'K',
        'unitRates' => [
            'C' => 1
        ]
    ],
    'Amount Of Substance'       => [
        'unitList'  => [
            'mol'
        ],
        'baseUnit'  => 'mol',
        'unitRates' => []
    ],
    'Luminous Intensity'        => [
        'unitList'  => [
            'cd'
        ],
        'baseUnit'  => 'cd',
        'unitRates' => []
    ],
    'Long intervals of time'    => [
        'unitList'  => [
            'year',
            'month',
            'week',
            'day'
        ],
        'baseUnit'  => 'year',
        'unitRates' => [
            'month' => 1,
            'week'  => 1,
            'day'   => 1
        ]
    ],
];
$config->set('unitsOfMeasure', json_decode(json_encode($unitsOfMeasure)));
$config->save();

// get data
$data = json_decode(file_get_contents('composer.json'), true);

// prepare
$data['require']['atrocore/pim'] = '*';
$data['require']['atrocore/dam'] = '*';

// save new composer data
file_put_contents('composer.json', json_encode($data, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));

// copy to stable
copy('composer.json', 'data/stable-composer.json');

// drop cache
\Treo\Core\Utils\Util::removeDir('data/cache');
