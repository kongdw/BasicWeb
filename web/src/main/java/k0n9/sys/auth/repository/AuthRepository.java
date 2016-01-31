
package k0n9.sys.auth.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.sys.auth.entity.Auth;

import java.util.Set;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:00
 * @version 1.0
 */
public interface AuthRepository extends BaseRepository<Auth, Long> {

    Auth findByUserId(Long userId);

    Auth findByGroupId(Long groupId);

    Auth findByOrganizationIdAndJobId(Long organizationId, Long jobId);

    ///////////委托给AuthRepositoryImpl实现
    public Set<Long> findRoleIds(Long userId, Set<Long> groupIds, Set<Long> organizationIds, Set<Long> jobIds, Set<Long[]> organizationJobIds);

}
