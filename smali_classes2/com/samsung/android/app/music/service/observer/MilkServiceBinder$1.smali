.class Lcom/samsung/android/app/music/service/observer/MilkServiceBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder$1;->a:Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder$1;->a:Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->a(Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;Z)Z

    return-void
.end method
