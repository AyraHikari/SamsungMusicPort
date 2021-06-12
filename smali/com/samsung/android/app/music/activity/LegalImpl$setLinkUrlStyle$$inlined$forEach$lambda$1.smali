.class public final Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/LegalImpl;->a(Landroid/text/SpannableString;Ljava/util/LinkedHashMap;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/samsung/android/app/music/activity/LegalImpl;

.field final synthetic c:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/samsung/android/app/music/activity/LegalImpl;Landroid/text/SpannableString;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/music/activity/LegalImpl;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;->c:Landroid/text/SpannableString;

    .line 205
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 208
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Lcom/samsung/android/app/music/activity/LegalImpl;)Landroid/app/Activity;

    move-result-object p1

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/music/activity/LegalImpl;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Lcom/samsung/android/app/music/activity/LegalImpl;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method
