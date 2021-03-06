import './vendor-i18n/fr_FR/flatpickr.l10n.fr.js';

export {
    modal,
    dropdown,
    filterInlineTable,
    datePicker
} from './js/index.js';

import '../node_modules/select2/dist/js/i18n/fr.js';

import locale from './vendor-i18n/fr_FR/tlp.fr.js';
import overrideSelect2 from './vendor-overrides/select2.js';

function frenchSelect2(element, options) {
    options.language = options.language || locale;

    return overrideSelect2(element, options);
}

export {
    locale,
    frenchSelect2 as select2
};
