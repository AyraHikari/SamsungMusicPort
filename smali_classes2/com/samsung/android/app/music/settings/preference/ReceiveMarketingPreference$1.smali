.class Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$OnMarketingAgreeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference$1;->a:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference$1;->a:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a(Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;Z)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference$1;->a:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->setChecked(Z)V

    return-void
.end method
