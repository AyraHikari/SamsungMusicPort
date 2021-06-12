.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onViewCreated$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onViewCreated$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onViewCreated$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onViewCreated$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onViewCreated$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->K()V

    :cond_0
    return-void
.end method
