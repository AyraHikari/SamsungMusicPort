.class Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 149
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected()"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)I

    move-result p1

    .line 151
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    .line 152
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;I)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 161
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method
