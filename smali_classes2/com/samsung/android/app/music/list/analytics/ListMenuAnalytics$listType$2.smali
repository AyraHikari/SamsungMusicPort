.class final Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$listType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;-><init>(Landroid/support/v4/app/Fragment;)V
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
.field final synthetic this$0:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$listType$2;->this$0:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$listType$2;->this$0:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$listType$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
