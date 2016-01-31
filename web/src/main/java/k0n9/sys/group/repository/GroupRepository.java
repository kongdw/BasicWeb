
package k0n9.sys.group.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.sys.group.entity.Group;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:00
 * @version 1.0
 */
public interface GroupRepository extends BaseRepository<Group, Long> {

    @Query("select id from Group where defaultGroup=true and show=true")
    List<Long> findDefaultGroupIds();

}
