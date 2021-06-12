.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$RadioUsageStatusViewHolder;Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$4;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 205
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$onBindViewHolder$4;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "fragment.fragmentManager\u2026return@setOnClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MyInfo_MyInfoDialogFragment |"

    .line 207
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;-><init>()V

    check-cast v1, Landroid/support/v4/app/Fragment;

    :goto_0
    if-eqz v1, :cond_2

    check-cast v1, Landroid/support/v4/app/DialogFragment;

    .line 208
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 207
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v4.app.DialogFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
