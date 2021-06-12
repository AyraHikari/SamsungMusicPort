.class Lcom/facebook/appevents/FacebookTimeSpentData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;,
        Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;
    }
.end annotation


# static fields
.field private static final APP_ACTIVATE_SUPPRESSION_PERIOD_IN_MILLISECONDS:J = 0x493e0L

.field private static final FIRST_TIME_LOAD_RESUME_TIME:J = -0x1L

.field private static final INACTIVE_SECONDS_QUANTA:[J

.field private static final INTERRUPTION_THRESHOLD_MILLISECONDS:J = 0x3e8L

.field private static final NUM_MILLISECONDS_IDLE_TO_BE_NEW_SESSION:J = 0xea60L

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private firstOpenSourceApplication:Ljava/lang/String;

.field private interruptionCount:I

.field private isAppActive:Z

.field private isWarmLaunch:Z

.field private lastActivateEventLoggedTime:J

.field private lastResumeTime:J

.field private lastSuspendTime:J

.field private millisecondsSpentInSession:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/facebook/appevents/FacebookTimeSpentData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const/16 v0, 0x13

    .line 45
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/appevents/FacebookTimeSpentData;->INACTIVE_SECONDS_QUANTA:[J

    return-void

    :array_0
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->resetSession()V

    return-void
.end method

.method private constructor <init>(JJJI)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->resetSession()V

    .line 126
    iput-wide p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    .line 127
    iput-wide p3, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    .line 128
    iput-wide p5, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 129
    iput p7, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    return-void
.end method

.method synthetic constructor <init>(JJJILcom/facebook/appevents/FacebookTimeSpentData$1;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p7}, Lcom/facebook/appevents/FacebookTimeSpentData;-><init>(JJJI)V

    return-void
.end method

.method private constructor <init>(JJJILjava/lang/String;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->resetSession()V

    .line 187
    iput-wide p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    .line 188
    iput-wide p3, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    .line 189
    iput-wide p5, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 190
    iput p7, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    .line 191
    iput-object p8, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JJJILjava/lang/String;Lcom/facebook/appevents/FacebookTimeSpentData$1;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p8}, Lcom/facebook/appevents/FacebookTimeSpentData;-><init>(JJJILjava/lang/String;)V

    return-void
.end method

.method private static getQuantaIndex(J)I
    .locals 4

    const/4 v0, 0x0

    .line 301
    :goto_0
    sget-object v1, Lcom/facebook/appevents/FacebookTimeSpentData;->INACTIVE_SECONDS_QUANTA:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/facebook/appevents/FacebookTimeSpentData;->INACTIVE_SECONDS_QUANTA:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private isColdLaunch()Z
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isWarmLaunch:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 327
    iput-boolean v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isWarmLaunch:Z

    return v0
.end method

.method private logAppDeactivatedEvent(Lcom/facebook/appevents/AppEventsLogger;J)V
    .locals 5

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_mobile_app_interruptions"

    .line 279
    iget v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fb_mobile_time_between_sessions"

    .line 282
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "session_quanta_%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 287
    invoke-static {p2, p3}, Lcom/facebook/appevents/FacebookTimeSpentData;->getQuantaIndex(J)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v4, p3

    .line 284
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "fb_mobile_launch_source"

    .line 288
    iget-object p3, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "fb_mobile_deactivate_app"

    .line 291
    iget-wide v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 295
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->resetSession()V

    return-void
.end method

.method private resetSession()V
    .locals 3

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    const-wide/16 v1, -0x1

    .line 313
    iput-wide v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    .line 314
    iput-wide v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    .line 315
    iput v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    const-wide/16 v0, 0x0

    .line 316
    iput-wide v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    return-void
.end method

.method private wasSuspendedEver()Z
    .locals 4

    .line 320
    iget-wide v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 10

    .line 195
    new-instance v9, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;

    iget-wide v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    iget-wide v3, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    iget-wide v5, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    iget v7, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    iget-object v8, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;-><init>(JJJILjava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method onResume(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .locals 5

    .line 228
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->isColdLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastActivateEventLoggedTime:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 230
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_mobile_launch_source"

    .line 231
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_activate_app"

    .line 234
    invoke-virtual {p1, v1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 235
    iput-wide p2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastActivateEventLoggedTime:J

    .line 236
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEventsLogger;->flush()V

    .line 243
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    if-eqz v0, :cond_2

    .line 244
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object p2, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string p3, "Resume for active app"

    invoke-static {p1, p2, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_2
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->wasSuspendedEver()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    sub-long v3, p2, v3

    goto :goto_0

    :cond_3
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_4

    .line 250
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v3, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v4, "Clock skew detected"

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-wide v1, v3

    :goto_1
    const-wide/32 v3, 0xea60

    const/4 v0, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    .line 257
    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/appevents/FacebookTimeSpentData;->logAppDeactivatedEvent(Lcom/facebook/appevents/AppEventsLogger;J)V

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x3e8

    cmp-long p1, v1, v3

    if-lez p1, :cond_6

    .line 262
    iget p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    .line 267
    :cond_6
    :goto_2
    iget p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    if-nez p1, :cond_7

    .line 268
    iput-object p4, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    .line 271
    :cond_7
    iput-wide p2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    .line 272
    iput-boolean v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    return-void
.end method

.method onSuspend(Lcom/facebook/appevents/AppEventsLogger;J)V
    .locals 4

    .line 205
    iget-boolean p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    if-nez p1, :cond_0

    .line 206
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object p2, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string p3, "Suspend for inactive app"

    invoke-static {p1, p2, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_0
    iget-wide v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 213
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v0, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v1, "Clock skew detected"

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 216
    :cond_1
    iget-wide v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 217
    iput-wide p2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    const/4 p1, 0x0

    .line 218
    iput-boolean p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    return-void
.end method
