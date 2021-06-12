.class Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$5;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$5;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->g(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
