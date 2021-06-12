.class Lcom/samsung/android/app/music/settings/preference/MobileDataPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference$1;->a:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference$1;->a:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->setChecked(Z)V

    return-void
.end method
