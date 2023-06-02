package classes;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Map;

public class cloudinary {
	private static final String CLOUD_NAME = "dkjsvmwph";
	private static final String API_KEY = "576824257526276";
	private static final String API_SECRET = "TEzfwuyp4MwsHHLTeavUW6jlWKM";

	public static String uploadImage(HttpServletRequest request) {
		String imageURL = null;

		// Configure Cloudinary
		Cloudinary cloudinary = new Cloudinary(
				ObjectUtils.asMap("cloud_name", CLOUD_NAME, "api_key", API_KEY, "api_secret", API_SECRET));

		try {
			// Uploading a file path to Cloudinary
			File imageFile = new File(request.getServletContext().getRealPath("/img/book_logo.jpg"));
			Map uploadResult = cloudinary.uploader().upload(imageFile, ObjectUtils.asMap("folder", "JAD_CA1"));

			// Retrieve the URL of the uploaded image
			imageURL = uploadResult.get("url").toString();
			System.out.println("Image URL: " + imageURL);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return imageURL;
	}
}
