.class public final Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager$serviceConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;-><init>(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 827
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager$serviceConnection$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "UiList"

    .line 829
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " milk service connected"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager$serviceConnection$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;->a(Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->l()Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "UiList"

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " milk service disconnected()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
