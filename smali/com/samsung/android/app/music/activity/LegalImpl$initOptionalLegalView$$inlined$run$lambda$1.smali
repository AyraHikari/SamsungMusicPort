.class final Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/LegalImpl;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/samsung/android/app/music/activity/LegalImpl;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Lcom/samsung/android/app/music/activity/LegalImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$run$lambda$1;->a:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$run$lambda$1;->b:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 304
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$run$lambda$1;->b:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/LegalImpl;->c(Lcom/samsung/android/app/music/activity/LegalImpl;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 392
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$run$lambda$1;->a:Landroid/widget/CheckBox;

    const-string v3, "this"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$run$lambda$1;->b:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/activity/LegalImpl;->b(Lcom/samsung/android/app/music/activity/LegalImpl;)Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$run$lambda$1;->a:Landroid/widget/CheckBox;

    const-string v3, "this"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
