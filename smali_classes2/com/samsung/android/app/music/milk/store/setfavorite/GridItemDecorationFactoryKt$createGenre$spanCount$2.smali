.class final Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
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
.field final synthetic $isDex:Z

.field final synthetic $isMultiWindow:Z

.field final synthetic $isPhone:Z

.field final synthetic $isPortrait:Z


# direct methods
.method constructor <init>(ZZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->$isDex:Z

    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->$isMultiWindow:Z

    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->$isPhone:Z

    iput-boolean p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->$isPortrait:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->$isDex:Z

    const/4 v1, 0x5

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->$isMultiWindow:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->$isPhone:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->$isPortrait:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    .line 53
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->$isPortrait:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$spanCount$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
