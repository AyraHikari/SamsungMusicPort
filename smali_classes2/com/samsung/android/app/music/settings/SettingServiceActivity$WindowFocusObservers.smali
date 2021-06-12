.class Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowFocusObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<",
        "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/settings/SettingServiceActivity$1;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;-><init>()V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 286
    invoke-interface {v1, p1}, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
