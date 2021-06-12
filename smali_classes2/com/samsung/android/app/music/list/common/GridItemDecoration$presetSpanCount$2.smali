.class final Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/GridItemDecoration;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/common/GridItemDecorator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/GridItemDecoration;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;->this$0:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;->this$0:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;->this$0:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;->this$0:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->c(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Lcom/samsung/android/app/music/list/common/GridItemDecorator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/GridItemDecorator;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;->this$0:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;->this$0:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->d(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;->this$0:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->d(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_0
    return v1
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
