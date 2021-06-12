.class final Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;->invoke()Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->d(Lcom/samsung/android/app/music/list/local/HeartFragment;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragmentKt;->a(Lcom/samsung/android/app/music/network/NetworkManager;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/music/list/local/HeartFragment;I)V

    :cond_0
    return-void
.end method
