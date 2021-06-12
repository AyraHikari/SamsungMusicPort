.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Landroid/support/v4/content/Loader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract a(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b()I
.end method

.method public abstract b(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract c(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
