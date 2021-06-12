.class public Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SleepTimer"
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->a:Ljava/util/List;

    .line 137
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->a:Ljava/util/List;

    const-string v1, "Off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->a:Ljava/util/List;

    const-string v1, "30 minutes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->a:Ljava/util/List;

    const-string v1, "1 hours"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->a:Ljava/util/List;

    const-string v1, "1 hours 30 minutes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->a:Ljava/util/List;

    const-string v1, "2 hours"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->a:Ljava/util/List;

    const-string v1, "Custom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
