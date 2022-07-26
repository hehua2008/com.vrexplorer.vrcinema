.class public Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;
.super Ljava/lang/Object;
.source "OrientationEKF.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_ACCEL_NOISE_SIGMA:D = 7.0

.field private static final MIN_ACCEL_NOISE_SIGMA:D = 0.75

.field private static final NS2S:F = 1.0E-9f


# instance fields
.field private accObservationFunctionForNumericalJacobianTempM:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private alignedToGravity:Z

.field private alignedToNorth:Z

.field private down:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private filteredGyroTimestep:F

.field private getPredictedGLMatrixTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private getPredictedGLMatrixTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private getPredictedGLMatrixTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private gyroFilterValid:Z

.field private final lastGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private mK:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private mQ:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private mR:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private mRaccel:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private mS:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private magObservationFunctionForNumericalJacobianTempM:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private mh:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private movingAverageAccelNormChange:D

.field private mu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private mx:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private north:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private numGyroTimestepSamples:I

.field private previousAccelNorm:D

.field private processAccTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processAccTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processAccTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processAccTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processAccTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private processAccTempV2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private processAccVDelta:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private processGyroTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processGyroTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processMagTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processMagTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processMagTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processMagTempM6:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private processMagTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private processMagTempV2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private processMagTempV3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private processMagTempV4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private processMagTempV5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private rotationMatrix:[D

.field private sensorTimeStampGyro:J

.field private setHeadingDegreesTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private timestepFilterInit:Z

.field private updateCovariancesAfterMotionTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

.field private updateCovariancesAfterMotionTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    .line 13
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 14
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 15
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 16
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mQ:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 17
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mR:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 18
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 19
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mS:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 20
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 21
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mK:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 22
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 23
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 24
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mh:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 25
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 26
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mx:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 27
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->down:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 28
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->north:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 30
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->lastGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 31
    iput-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->previousAccelNorm:D

    .line 32
    iput-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->movingAverageAccelNormChange:D

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->timestepFilterInit:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->gyroFilterValid:Z

    .line 37
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 38
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 39
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 40
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->setHeadingDegreesTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 41
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processGyroTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 42
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processGyroTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 43
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 44
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 45
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 46
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 47
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 48
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 49
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempV2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 50
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccVDelta:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 51
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 52
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 53
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 54
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 55
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 56
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 57
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 58
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 59
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 60
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 61
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 62
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 63
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 64
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 69
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->reset()V

    .line 70
    return-void
.end method

.method private accObservationFunctionForNumericalJacobian(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 3
    .param p1, "so3SensorFromWorldPred"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->down:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mh:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 354
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mh:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVec(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 355
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v0, p2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->muFromSO3(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 356
    return-void
.end method

.method public static arrayAssign([[DLcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    .locals 22
    .param p0, "data"    # [[D
    .param p1, "m"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    .line 155
    sget-boolean v2, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x3

    move-object/from16 v0, p0

    array-length v3, v0

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 157
    :cond_0
    sget-boolean v2, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-object v3, p0, v3

    array-length v3, v3

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 159
    :cond_1
    sget-boolean v2, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x1

    aget-object v3, p0, v3

    array-length v3, v3

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 161
    :cond_2
    sget-boolean v2, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x2

    aget-object v3, p0, v3

    array-length v3, v3

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 163
    :cond_3
    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-wide v8, v2, v3

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x0

    aget-wide v10, v2, v3

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-wide v12, v2, v3

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-wide v14, v2, v3

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x0

    aget-wide v16, v2, v3

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-wide v18, v2, v3

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-wide v20, v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v21}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(DDDDDDDDD)V

    .line 164
    return-void
.end method

.method private filterGyroTimestep(F)V
    .locals 5
    .param p1, "timeStep"    # F

    .prologue
    const/4 v4, 0x1

    .line 330
    const v0, 0x3f733333    # 0.95f

    .line 331
    .local v0, "kFilterCoeff":F
    const/high16 v1, 0x41200000    # 10.0f

    .line 332
    .local v1, "kMinSamples":F
    iget-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->timestepFilterInit:Z

    if-nez v2, :cond_1

    .line 333
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->filteredGyroTimestep:F

    .line 334
    iput v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->numGyroTimestepSamples:I

    .line 335
    iput-boolean v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->timestepFilterInit:Z

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const v2, 0x3f733333    # 0.95f

    iget v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->filteredGyroTimestep:F

    mul-float/2addr v2, v3

    const v3, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->filteredGyroTimestep:F

    .line 338
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->numGyroTimestepSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->numGyroTimestepSamples:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 339
    iput-boolean v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->gyroFilterValid:Z

    goto :goto_0
.end method

.method private glMatrixFromSo3(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)[D
    .locals 10
    .param p1, "so3"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    .line 317
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 318
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 319
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    invoke-virtual {p1, v1, v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "c":I
    :cond_1
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v6, 0xb

    aput-wide v8, v5, v6

    aput-wide v8, v3, v4

    aput-wide v8, v2, v7

    .line 324
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v7, 0xe

    aput-wide v8, v6, v7

    aput-wide v8, v4, v5

    aput-wide v8, v2, v3

    .line 325
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v3, 0xf

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 326
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->rotationMatrix:[D

    return-object v2
.end method

.method private magObservationFunctionForNumericalJacobian(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 3
    .param p1, "so3SensorFromWorldPred"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->north:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mh:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 360
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mh:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVec(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 361
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v0, p2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->muFromSO3(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 362
    return-void
.end method

.method private updateAccelCovariance(D)V
    .locals 21
    .param p1, "currentAccelNorm"    # D

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->previousAccelNorm:D

    sub-double v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 203
    .local v6, "currentAccelNormChange":D
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->previousAccelNorm:D

    .line 204
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 205
    .local v10, "kSmoothingFactor":D
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v6

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->movingAverageAccelNormChange:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->movingAverageAccelNormChange:D

    .line 206
    const-wide v8, 0x3fc3333333333333L    # 0.15

    .line 207
    .local v8, "kMaxAccelNormChange":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->movingAverageAccelNormChange:D

    const-wide v16, 0x3fc3333333333333L    # 0.15

    div-double v12, v14, v16

    .line 208
    .local v12, "normChangeRatio":D
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v18, 0x4019000000000000L    # 6.25

    mul-double v18, v18, v12

    add-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 209
    .local v4, "accelNoiseSigma":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    mul-double v16, v4, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 210
    return-void
.end method

.method private updateCovariancesAfterMotion()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 347
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 348
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 349
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 350
    return-void
.end method


# virtual methods
.method public getGLMatrix()[D
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-direct {p0, v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->glMatrixFromSo3(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)[D

    move-result-object v0

    return-object v0
.end method

.method public getHeadingDegrees()D
    .locals 14

    .prologue
    .line 106
    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    .line 107
    .local v4, "x":D
    iget-object v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    .line 108
    .local v6, "y":D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 109
    .local v2, "mag":D
    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v8, v2, v8

    if-gez v8, :cond_1

    .line 110
    const-wide/16 v0, 0x0

    .line 121
    :cond_0
    :goto_0
    return-wide v0

    .line 112
    :cond_1
    const-wide v8, -0x3fa9800000000000L    # -90.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    sub-double v0, v8, v10

    .line 113
    .local v0, "heading":D
    const-wide/16 v8, 0x0

    cmpg-double v8, v0, v8

    if-gez v8, :cond_2

    .line 114
    const-wide v8, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v8

    .line 117
    :cond_2
    const-wide v8, 0x4076800000000000L    # 360.0

    cmpl-double v8, v0, v8

    if-ltz v8, :cond_0

    .line 118
    const-wide v8, 0x4076800000000000L    # 360.0

    sub-double/2addr v0, v8

    goto :goto_0
.end method

.method public getPredictedGLMatrix(D)[D
    .locals 7
    .param p1, "secondsAfterLastGyroEvent"    # D

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 141
    .local v0, "pmu":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->lastGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v0, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 142
    neg-double v4, p1

    invoke-virtual {v0, v4, v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 143
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 144
    .local v1, "so3PredictedMotion":Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    invoke-static {v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 145
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    .line 146
    .local v2, "so3PredictedState":Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v3, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 147
    invoke-direct {p0, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->glMatrixFromSo3(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)[D

    move-result-object v3

    return-object v3
.end method

.method public getRotationMatrix()Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    return-object v0
.end method

.method public isAlignedToGravity()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToGravity:Z

    return v0
.end method

.method public isAlignedToNorth()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToNorth:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToGravity:Z

    return v0
.end method

.method public declared-synchronized processAcc(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V
    .locals 8
    .param p1, "acc"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "sensorTimeStamp"    # J

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v5, p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 214
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->length()D

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateAccelCovariance(D)V

    .line 215
    iget-boolean v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToGravity:Z

    if-eqz v5, :cond_1

    .line 216
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {p0, v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobian(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 217
    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 219
    .local v2, "eps":D
    const/4 v1, 0x0

    .local v1, "dof":I
    :goto_0
    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccVDelta:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 221
    .local v0, "delta":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setZero()V

    .line 222
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setComponent(ID)V

    .line 223
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v0, v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 224
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 225
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {p0, v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobian(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 226
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 227
    .local v4, "withDelta":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempV2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v5, v4, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->sub(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 228
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempV2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 229
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempV2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v5, v1, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "delta":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .end local v4    # "withDelta":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    :cond_0
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 233
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 234
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 235
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mS:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->add(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 236
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mS:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->invert(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)Z

    .line 237
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 238
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 239
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mK:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 240
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mK:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mx:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 241
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mK:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 242
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 243
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->minusEquals(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 244
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 245
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 246
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mx:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 247
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 248
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v1    # "dof":I
    .end local v2    # "eps":D
    :goto_1
    monitor-exit p0

    return-void

    .line 250
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->down:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromTwoVec(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 251
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToGravity:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized processGyro(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V
    .locals 8
    .param p1, "gyro"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "sensorTimeStamp"    # J

    .prologue
    .line 175
    monitor-enter p0

    const v1, 0x3d23d70a    # 0.04f

    .line 176
    .local v1, "kTimeThreshold":F
    const v2, 0x3c23d70a    # 0.01f

    .line 177
    .local v2, "kdTdefault":F
    :try_start_0
    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->sensorTimeStampGyro:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 178
    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->sensorTimeStampGyro:J

    sub-long v4, p2, v4

    long-to-float v3, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float v0, v3, v4

    .line 179
    .local v0, "dT":F
    const v3, 0x3d23d70a    # 0.04f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 180
    iget-boolean v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->gyroFilterValid:Z

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->filteredGyroTimestep:F

    .line 185
    :goto_0
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v3, p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 186
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    neg-float v4, v0

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 187
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v3, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 188
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processGyroTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 189
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processGyroTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 190
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processGyroTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 191
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotion()V

    .line 192
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processGyroTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mQ:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 193
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processGyroTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    mul-float v4, v0, v0

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->scale(D)V

    .line 194
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processGyroTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->plusEquals(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 197
    .end local v0    # "dT":F
    :cond_0
    iput-wide p2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->sensorTimeStampGyro:J

    .line 198
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->lastGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v3, p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 180
    .restart local v0    # "dT":F
    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    .line 182
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->filterGyroTimestep(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    .end local v0    # "dT":F
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized processMag([FJ)V
    .locals 15
    .param p1, "mag"    # [F
    .param p2, "sensorTimeStamp"    # J

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToGravity:Z

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    const/4 v2, 0x0

    aget v2, p1, v2

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v4, p1, v4

    float-to-double v4, v4

    const/4 v6, 0x2

    aget v6, p1, v6

    float-to-double v6, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 259
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->normalize()V

    .line 260
    new-instance v9, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v9}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    .line 261
    .local v9, "downInSensorFrame":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v9}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->getColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 262
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v1, v9, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->cross(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 263
    iget-object v13, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 264
    .local v13, "perpToDownAndMag":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    invoke-virtual {v13}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->normalize()V

    .line 265
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v9, v13, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->cross(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 266
    iget-object v12, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 267
    .local v12, "magHorizontal":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    invoke-virtual {v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->normalize()V

    .line 268
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v1, v12}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 269
    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToNorth:Z

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {p0, v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 271
    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 273
    .local v10, "eps":D
    const/4 v8, 0x0

    .local v8, "dof":I
    :goto_0
    const/4 v1, 0x3

    if-ge v8, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV3:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 275
    .local v0, "delta":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setZero()V

    .line 276
    invoke-virtual {v0, v8, v10, v11}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setComponent(ID)V

    .line 277
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 278
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 279
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM2:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {p0, v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 280
    iget-object v14, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 281
    .local v14, "withDelta":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v1, v14, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->sub(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 282
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 283
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempV5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v1, v8, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 273
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "delta":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .end local v14    # "withDelta":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    :cond_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 287
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 288
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 289
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mR:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mS:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->add(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 290
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mS:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->invert(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)Z

    .line 291
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 292
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 293
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mK:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 294
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mK:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mx:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 295
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mK:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 296
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 297
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->minusEquals(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 298
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 299
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 300
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mx:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 301
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 302
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 303
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v8    # "dof":I
    .end local v9    # "downInSensorFrame":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .end local v10    # "eps":D
    .end local v12    # "magHorizontal":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .end local v13    # "perpToDownAndMag":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 305
    .restart local v9    # "downInSensorFrame":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .restart local v12    # "magHorizontal":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .restart local v13    # "perpToDownAndMag":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {p0, v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 306
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 307
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 308
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 309
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->updateCovariancesAfterMotion()V

    .line 310
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToNorth:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 257
    .end local v9    # "downInSensorFrame":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .end local v12    # "magHorizontal":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .end local v13    # "perpToDownAndMag":Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 14

    .prologue
    .line 73
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->sensorTimeStampGyro:J

    .line 74
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 75
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 76
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    .line 77
    .local v8, "initialSigmaP":D
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setZero()V

    .line 78
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mP:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    invoke-virtual {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 79
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 80
    .local v10, "initialSigmaQ":D
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mQ:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setZero()V

    .line 81
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mQ:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 82
    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    .line 83
    .local v12, "initialSigmaR":D
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mR:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setZero()V

    .line 84
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mR:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    const-wide/high16 v2, 0x3fb0000000000000L    # 0.0625

    invoke-virtual {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 85
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setZero()V

    .line 86
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    const-wide/high16 v2, 0x3fe2000000000000L    # 0.5625

    invoke-virtual {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 87
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mS:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setZero()V

    .line 88
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mH:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setZero()V

    .line 89
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mK:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->setZero()V

    .line 90
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mNu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setZero()V

    .line 91
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mz:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setZero()V

    .line 92
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mh:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setZero()V

    .line 93
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mu:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setZero()V

    .line 94
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->mx:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setZero()V

    .line 95
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->down:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x40239eb851eb851fL    # 9.81

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 96
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->north:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToGravity:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->alignedToNorth:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 73
    .end local v8    # "initialSigmaP":D
    .end local v10    # "initialSigmaQ":D
    .end local v12    # "initialSigmaR":D
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHeadingDegrees(D)V
    .locals 15
    .param p1, "heading"    # D

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->getHeadingDegrees()D

    move-result-wide v2

    .line 127
    .local v2, "currentHeading":D
    sub-double v4, p1, v2

    .line 128
    .local v4, "deltaHeading":D
    const-wide v10, 0x4066800000000000L    # 180.0

    div-double v10, v4, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 129
    .local v8, "s":D
    const-wide v10, 0x4066800000000000L    # 180.0

    div-double v10, v4, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 130
    .local v0, "c":D
    const/4 v7, 0x3

    new-array v6, v7, [[D

    const/4 v7, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [D

    const/4 v11, 0x0

    aput-wide v0, v10, v11

    const/4 v11, 0x1

    neg-double v12, v8

    aput-wide v12, v10, v11

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [D

    const/4 v11, 0x0

    aput-wide v8, v10, v11

    const/4 v11, 0x1

    aput-wide v0, v10, v11

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    aput-object v10, v6, v7

    const/4 v7, 0x2

    const/4 v10, 0x3

    new-array v10, v10, [D

    fill-array-data v10, :array_0

    aput-object v10, v6, v7

    .line 131
    .local v6, "deltaHeadingRotationVals":[[D
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->setHeadingDegreesTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->arrayAssign([[DLcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    .line 132
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v10, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->setHeadingDegreesTempM1:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v11, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    invoke-static {v7, v10, v11}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;->mult(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 126
    .end local v0    # "c":D
    .end local v2    # "currentHeading":D
    .end local v4    # "deltaHeading":D
    .end local v6    # "deltaHeadingRotationVals":[[D
    .end local v8    # "s":D
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 130
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method
