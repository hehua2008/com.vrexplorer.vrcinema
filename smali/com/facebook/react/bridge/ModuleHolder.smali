.class public Lcom/facebook/react/bridge/ModuleHolder;
.super Ljava/lang/Object;
.source "ModuleHolder.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field private static final sInstanceKeyCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mCanOverrideExistingModule:Z

.field private final mHasConstants:Z

.field private mInitializable:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mInstanceKey:I

.field private mIsCreating:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mIsInitializing:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mModule:Lcom/facebook/react/bridge/NativeModule;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/react/bridge/ModuleHolder;->sInstanceKeyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/NativeModule;)V
    .locals 1
    .param p1, "nativeModule"    # Lcom/facebook/react/bridge/NativeModule;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/facebook/react/bridge/ModuleHolder;->sInstanceKeyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    .line 61
    invoke-interface {p1}, Lcom/facebook/react/bridge/NativeModule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    .line 62
    invoke-interface {p1}, Lcom/facebook/react/bridge/NativeModule;->canOverrideExistingModule()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mCanOverrideExistingModule:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mHasConstants:Z

    .line 64
    iput-object p1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/module/model/ReactModuleInfo;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "moduleInfo"    # Lcom/facebook/react/module/model/ReactModuleInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/module/model/ReactModuleInfo;",
            "Ljavax/inject/Provider",
            "<+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/facebook/react/bridge/ModuleHolder;->sInstanceKeyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    .line 51
    invoke-virtual {p1}, Lcom/facebook/react/module/model/ReactModuleInfo;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/facebook/react/module/model/ReactModuleInfo;->canOverrideExistingModule()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mCanOverrideExistingModule:Z

    .line 53
    invoke-virtual {p1}, Lcom/facebook/react/module/model/ReactModuleInfo;->hasConstants()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mHasConstants:Z

    .line 54
    iput-object p2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mProvider:Ljavax/inject/Provider;

    .line 55
    invoke-virtual {p1}, Lcom/facebook/react/module/model/ReactModuleInfo;->needsEagerInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/facebook/react/bridge/ModuleHolder;->create()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    .line 58
    :cond_0
    return-void
.end method

.method private create()Lcom/facebook/react/bridge/NativeModule;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 153
    iget-object v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    const-string v3, "Creating an already created module."

    invoke-static {v2, v3}, Lcom/facebook/react/bridge/SoftAssertions;->assertCondition(ZLjava/lang/String;)V

    .line 154
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v2, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 155
    const-string v2, "ModuleHolder.createModule"

    invoke-static {v6, v7, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const-string v3, "name"

    iget-object v4, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v3, v4}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/NativeModule;

    .line 161
    .local v0, "module":Lcom/facebook/react/bridge/NativeModule;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mProvider:Ljavax/inject/Provider;

    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, "shouldInitializeNow":Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    iput-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    .line 165
    iget-boolean v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInitializable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    if-nez v2, :cond_0

    .line 166
    const/4 v1, 0x1

    .line 168
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    if-eqz v1, :cond_1

    .line 170
    :try_start_2
    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/ModuleHolder;->doInitialize(Lcom/facebook/react/bridge/NativeModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    :cond_1
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v2, v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;I)V

    .line 174
    invoke-static {v6, v7}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 176
    return-object v0

    .line 153
    .end local v0    # "module":Lcom/facebook/react/bridge/NativeModule;
    .end local v1    # "shouldInitializeNow":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 168
    .restart local v0    # "module":Lcom/facebook/react/bridge/NativeModule;
    .restart local v1    # "shouldInitializeNow":Z
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    .end local v0    # "module":Lcom/facebook/react/bridge/NativeModule;
    .end local v1    # "shouldInitializeNow":Z
    :catchall_1
    move-exception v2

    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget v4, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;I)V

    .line 174
    invoke-static {v6, v7}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    throw v2
.end method

.method private doInitialize(Lcom/facebook/react/bridge/NativeModule;)V
    .locals 6
    .param p1, "module"    # Lcom/facebook/react/bridge/NativeModule;

    .prologue
    const-wide/16 v4, 0x0

    .line 180
    const-string v1, "ModuleHolder.initialize"

    invoke-static {v4, v5, v1}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    const-string v2, "name"

    iget-object v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    .line 181
    invoke-virtual {v1, v2, v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 183
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->INITIALIZE_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v1, v2, v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "shouldInitialize":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-boolean v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInitializable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    if-nez v1, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 190
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    .line 192
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    if-eqz v0, :cond_1

    .line 194
    :try_start_2
    invoke-interface {p1}, Lcom/facebook/react/bridge/NativeModule;->initialize()V

    .line 197
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    .line 199
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 202
    :cond_1
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->INITIALIZE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget v2, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;I)V

    .line 203
    invoke-static {v4, v5}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 205
    return-void

    .line 192
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 202
    :catchall_1
    move-exception v1

    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->INITIALIZE_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInstanceKey:I

    invoke-static {v2, v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;I)V

    .line 203
    invoke-static {v4, v5}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    throw v1

    .line 199
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    invoke-interface {v0}, Lcom/facebook/react/bridge/NativeModule;->onCatalystInstanceDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCanOverrideExistingModule()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mCanOverrideExistingModule:Z

    return v0
.end method

.method public getHasConstants()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mHasConstants:Z

    return v0
.end method

.method public getModule()Lcom/facebook/react/bridge/NativeModule;
    .locals 4
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "shouldCreate":Z
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    if-eqz v3, :cond_0

    .line 117
    iget-object v1, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    monitor-exit p0

    .line 147
    :goto_0
    return-object v1

    .line 119
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsCreating:Z

    if-nez v3, :cond_1

    .line 120
    const/4 v2, 0x1

    .line 121
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsCreating:Z

    .line 125
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    if-eqz v2, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/facebook/react/bridge/ModuleHolder;->create()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    .line 130
    .local v1, "module":Lcom/facebook/react/bridge/NativeModule;
    monitor-enter p0

    .line 131
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsCreating:Z

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 125
    .end local v1    # "module":Lcom/facebook/react/bridge/NativeModule;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 136
    :cond_2
    monitor-enter p0

    .line 140
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsCreating:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_3

    .line 142
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 147
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/NativeModule;

    monitor-exit p0

    move-object v1, v3

    goto :goto_0

    .line 148
    :catchall_2
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized hasInstance()Z
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method markInitializable()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "shouldInitializeNow":Z
    const/4 v0, 0x0

    .line 75
    .local v0, "module":Lcom/facebook/react/bridge/NativeModule;
    monitor-enter p0

    .line 76
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mInitializable:Z

    .line 77
    iget-object v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    if-eqz v3, :cond_0

    .line 78
    iget-boolean v3, p0, Lcom/facebook/react/bridge/ModuleHolder;->mIsInitializing:Z

    if-nez v3, :cond_2

    :goto_0
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 79
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/facebook/react/bridge/ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    .line 82
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v1, :cond_1

    .line 84
    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/ModuleHolder;->doInitialize(Lcom/facebook/react/bridge/NativeModule;)V

    .line 86
    :cond_1
    return-void

    .line 78
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
