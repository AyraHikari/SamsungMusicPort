.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;
    }
.end annotation


# virtual methods
.method public abstract animationFinished()Z
.end method

.method public abstract asView()Landroid/view/View;
.end method

.method public abstract getDefaultAlbumArt()Landroid/graphics/Bitmap;
.end method

.method public abstract getSelectedItemPosition()I
.end method

.method public abstract getSelectedItemUri()Landroid/net/Uri;
.end method

.method public abstract isFlinging()Z
.end method

.method public abstract isInEditMode()Z
.end method

.method public abstract isTouched()Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract reloadItem(I)V
.end method

.method public abstract reloadView()V
.end method

.method public abstract requestRender()V
.end method

.method public abstract setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
.end method

.method public abstract setAdapterWrap(Z)V
.end method

.method public abstract setAnimationIsNext(Z)V
.end method

.method public abstract setDefaultAlbumArt(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;)V
.end method

.method public abstract setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end method

.method public abstract setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
.end method

.method public abstract setOnSelectedAlbumSizeChangedListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;)V
.end method

.method public abstract setSelection(I)V
.end method

.method public abstract setSelection(IZ)V
.end method

.method public abstract setSingleScroll(Z)V
.end method
