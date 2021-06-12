.class public final Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$loaderCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$loaderCallback$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const-string p1, "Ui"

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MySubscriptionDetail_MySubscriptionDetailFragment | onLoadFinished() - data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 145
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$loaderCallback$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string p2, "Ui"

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MySubscriptionDetail_MySubscriptionDetailFragment | onCreateLoader() - id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$loaderCallback$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "activity ?: return null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;

    invoke-direct {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;-><init>()V

    .line 127
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;

    move-result-object p2

    const-string v0, "orderId"

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$loaderCallback$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;

    move-result-object p2

    .line 129
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;

    move-result-object p2

    .line 131
    new-instance v7, Landroid/support/v4/content/CursorLoader;

    .line 132
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    iget-object v2, p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->uri:Landroid/net/Uri;

    .line 134
    iget-object v3, p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->projection:[Ljava/lang/String;

    .line 135
    iget-object v4, p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->selection:Ljava/lang/String;

    .line 136
    iget-object v5, p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 137
    iget-object v6, p2, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, v7

    .line 131
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Landroid/support/v4/content/Loader;

    return-object v7

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/detail/MySubscriptionDetailFragment$loaderCallback$1;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const-string p1, "Ui"

    const-string v0, "MySubscriptionDetail_MySubscriptionDetailFragment | onLoaderReset()"

    .line 149
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
