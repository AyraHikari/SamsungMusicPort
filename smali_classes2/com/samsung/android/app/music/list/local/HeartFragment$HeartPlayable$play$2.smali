.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->l_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[J)V
    .locals 6

    .line 528
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->a(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 531
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

    .line 533
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->b:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->g()I

    move-result v2

    .line 534
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->b:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->h()Ljava/lang/String;

    move-result-object v3

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v0, p2

    .line 532
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 539
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    const p1, 0x7f0b0463

    goto :goto_1

    :cond_2
    const p1, 0x7f0b00d3

    .line 544
    :goto_1
    invoke-static {v5, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 547
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->a(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;I)V

    return-void

    :cond_3
    return-void
.end method
