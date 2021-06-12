.class Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;
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

    .line 230
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 233
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "path"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 237
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 238
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 242
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 244
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->a:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->deleted:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string p2, "MusicDrm"

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
