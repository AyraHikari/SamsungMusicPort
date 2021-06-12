.class final Lcom/samsung/android/app/music/list/ListPlayableImpl$play$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ListPlayableImpl;->l_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/ListPlayableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/ListPlayableImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl$play$1;->a:Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[J)V
    .locals 8

    .line 22
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl$play$1;->a:Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/ListPlayableImpl;->b()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 25
    array-length v1, p2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl$play$1;->a:Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/ListPlayableImpl;->a(Lcom/samsung/android/app/music/list/ListPlayableImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->g()I

    move-result v2

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl$play$1;->a:Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/ListPlayableImpl;->a(Lcom/samsung/android/app/music/list/ListPlayableImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p2

    .line 26
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const p1, 0x7f0b00d3

    .line 32
    invoke-static {v5, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 35
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl$play$1;->a:Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/list/ListPlayableImpl;->a(I)V

    return-void

    :cond_2
    return-void
.end method
