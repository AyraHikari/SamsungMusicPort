.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$showButtonBgSettingChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$showButtonBgSettingChangedListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$showButtonBgSettingChangedListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/Boolean;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$showButtonBgSettingChangedListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->v(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;

    .line 206
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;->showButtonBackground(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
