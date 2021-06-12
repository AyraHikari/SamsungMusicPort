.class final Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$keyword$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$keyword$2;->this$0:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$keyword$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics$keyword$2;->this$0:Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
