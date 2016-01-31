
package k0n9.sys.permission.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.sys.permission.entity.Role;
import k0n9.sys.permission.entity.RoleResourcePermission;
import org.springframework.data.jpa.repository.Query;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:00
 * @version 1.0
 */
public interface RoleRepository extends BaseRepository<Role, Long> {

    @Query("from RoleResourcePermission where role=?1 and resourceId=?2")
    RoleResourcePermission findRoleResourcePermission(Role role, Long resourceId);
}
