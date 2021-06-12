.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;
    }
.end annotation


# virtual methods
.method public abstract addContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
