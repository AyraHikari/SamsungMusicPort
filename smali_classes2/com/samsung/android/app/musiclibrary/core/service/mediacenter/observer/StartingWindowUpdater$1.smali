.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->updateGradientBitmap(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Landroid/net/Uri;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 6
    .param p4    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 234
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 235
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 236
    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 237
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 238
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 239
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->access$100()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget p4, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    const/4 v4, 0x1

    aput p4, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 240
    invoke-virtual {v1, v5, v5, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p1, 0xff

    .line 241
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 242
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {p1, p2, p3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->requestSaveStartingWindow(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
