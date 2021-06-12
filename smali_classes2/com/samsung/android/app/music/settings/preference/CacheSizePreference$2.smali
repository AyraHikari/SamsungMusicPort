.class Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->a(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->d(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-static {v2}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->b(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-static {v2}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00ca

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
