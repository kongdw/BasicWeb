package k0n9.maintain.dynamictask.service;

import k0n9.maintain.dynamictask.entity.TaskDefinition;

/**
 * @author David Kong
 * <p>Date: 14-1-17
 * @version 1.0
 */
public interface DynamicTaskApi {

    public void addTaskDefinition(TaskDefinition taskDefinition);
    public void updateTaskDefinition(TaskDefinition taskDefinition);
    public void deleteTaskDefinition(boolean forceTermination, Long... taskDefinitionIds);


    public void startTask(Long... taskDefinitionIds);
    public void stopTask(boolean forceTermination, Long... taskDefinitionId);


}
