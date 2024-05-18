from .kitti_dataset import KITTIDataset, VoxelKITTIDataset
from .sceneflow_dataset import SceneFlowDatset
from .ds_dataset import DSDataset, VoxelDSDatasetCalib

__datasets__ = {
    "sceneflow": SceneFlowDatset,
    "kitti": KITTIDataset,
    'drivingstereo': DSDataset
}
