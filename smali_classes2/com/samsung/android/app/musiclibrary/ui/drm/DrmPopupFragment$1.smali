.class Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;Ljava/lang/String;)V

    return-void
.end method
