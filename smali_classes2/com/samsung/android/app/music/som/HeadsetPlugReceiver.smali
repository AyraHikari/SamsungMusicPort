.class public final Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "HeadsetPlugReceiver"

.field private static final b:Ljava/lang/String;

.field private static final c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;->b:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;-><init>(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$1;)V

    sput-object v0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;->c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;->c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;

    invoke-static {v0, p1, p2, p0}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
