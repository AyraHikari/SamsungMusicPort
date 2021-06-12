.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;ILjava/lang/String;JLcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->b:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->d:J

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->b:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->d:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;ILjava/lang/String;J)V

    .line 653
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method
