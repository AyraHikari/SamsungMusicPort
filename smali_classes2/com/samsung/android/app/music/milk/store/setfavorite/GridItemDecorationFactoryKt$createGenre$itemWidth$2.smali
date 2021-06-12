.class final Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$itemWidth$2;
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
.field final synthetic $fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$itemWidth$2;->$fragment:Landroid/support/v4/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$itemWidth$2;->$fragment:Landroid/support/v4/app/Fragment;

    const v1, 0x7f100835

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt;->a(Landroid/support/v4/app/Fragment;I)I

    move-result v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactoryKt$createGenre$itemWidth$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
