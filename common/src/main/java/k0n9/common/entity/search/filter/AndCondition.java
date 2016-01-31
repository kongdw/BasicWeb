
package k0n9.common.entity.search.filter;

import com.google.common.collect.Lists;

import java.util.List;

/**
 * and 条件
 *
 * @author David Kong
 * Date:2016-01-01
 * @version 1.0
 */
public class AndCondition implements SearchFilter {

    private List<SearchFilter> andFilters = Lists.newArrayList();

    AndCondition() {
    }

    public AndCondition add(SearchFilter filter) {
        this.andFilters.add(filter);
        return this;
    }

    public List<SearchFilter> getAndFilters() {
        return andFilters;
    }

    @Override
    public String toString() {
        return "AndCondition{" + andFilters + '}';
    }
}
