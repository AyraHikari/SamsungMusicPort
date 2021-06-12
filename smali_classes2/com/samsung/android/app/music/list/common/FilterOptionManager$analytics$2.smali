.class final Lcom/samsung/android/app/music/list/common/FilterOptionManager$analytics$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$analytics$2;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;
    .locals 2

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$analytics$2;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$analytics$2;->invoke()Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    move-result-object v0

    return-object v0
.end method
