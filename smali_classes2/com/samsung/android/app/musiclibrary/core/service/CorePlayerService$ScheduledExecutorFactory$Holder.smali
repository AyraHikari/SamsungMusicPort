.class final Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final sInstance:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 321
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory$Holder;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
