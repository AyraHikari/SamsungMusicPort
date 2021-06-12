.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateBlurBackground(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

.field final synthetic val$builder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

.field final synthetic val$converter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;->val$converter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;->val$builder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;->invoke(Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;->val$converter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;->val$builder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setBlurBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    .line 236
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
