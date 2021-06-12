.class Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnLargerFontChangeObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<",
        "Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    .line 124
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
