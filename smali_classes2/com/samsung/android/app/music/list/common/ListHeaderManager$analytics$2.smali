.class final Lcom/samsung/android/app/music/list/common/ListHeaderManager$analytics$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$analytics$2;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;
    .locals 2

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$analytics$2;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->d()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$analytics$2;->invoke()Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    move-result-object v0

    return-object v0
.end method
