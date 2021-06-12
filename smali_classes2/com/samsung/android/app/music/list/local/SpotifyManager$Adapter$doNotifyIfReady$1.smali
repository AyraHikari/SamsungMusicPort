.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$doNotifyIfReady$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

.field final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$doNotifyIfReady$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$doNotifyIfReady$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "UiList"

    const-string v1, "notify is ready with delay"

    .line 1452
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$doNotifyIfReady$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$doNotifyIfReady$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
