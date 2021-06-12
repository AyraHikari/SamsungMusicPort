.class Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;Ljava/lang/String;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;Ljava/lang/String;)I

    return-void
.end method
