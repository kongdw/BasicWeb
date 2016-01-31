
package k0n9.showcase.excel.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.showcase.excel.entity.ExcelData;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:00
 * @version 1.0
 */
public interface ExcelDataRepository extends BaseRepository<ExcelData, Long> {

    public void truncate();

    @Modifying
    @Query(value = "insert into showcase_excel_data (id, content) values(?1,?2)", nativeQuery = true)
    public void save(Long id, String content);

}
