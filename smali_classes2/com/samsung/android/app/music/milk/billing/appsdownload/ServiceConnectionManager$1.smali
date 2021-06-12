.class Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;)V

    return-void
.end method
