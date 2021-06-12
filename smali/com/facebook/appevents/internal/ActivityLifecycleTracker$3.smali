.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 178
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 181
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$302(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 183
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activityName:Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    .line 189
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 190
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activityName:Ljava/lang/String;

    .line 195
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    .line 196
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activityName:Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$302(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 203
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->incrementInterruptionCount()V

    .line 207
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 208
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V

    return-void
.end method
